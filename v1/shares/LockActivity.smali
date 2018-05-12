.class public Lcom/dragonlab/bbclearningenglish/LockActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btEnter:Landroid/widget/Button;

.field private btGetPwd:Landroid/widget/Button;

.field private edPass:Landroid/widget/EditText;

.field private ivJoin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v1, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->edPass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "\u8bf7\u8f93\u5165\u7fa4\u5458\u5bc6\u7801\u53e3\u4ee4\uff0c\u60a8\u53ef\u4ee5\u52a0\u7fa4\u83b7\u53d6\u53e3\u4ee4\uff01"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "config"

    invoke-virtual {p0, v1, v4}, Lcom/dragonlab/bbclearningenglish/LockActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pass"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "pass":Ljava/lang/String;
    iget-object v1, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->edPass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dragonlab/bbclearningenglish/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/dragonlab/bbclearningenglish/LockActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "\u7fa4\u5458\u5bc6\u7801\u53e3\u4ee4\u9519\u8bef\uff0c\u53e3\u4ee4\u6bcf\u5929\u90fd\u4f1a\u5728\u7fa4\u4e2d\u66f4\u65b0\uff0c\u8bf7\u52a0\u7fa4\u83b7\u53d6\u6700\u65b0\u53e3\u4ee4\uff01"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    .end local v0    # "pass":Ljava/lang/String;
    :pswitch_1
    const-string v1, "NGLY6Bu_4gGI_7m71SVJmXBNoUQHtL9L"

    invoke-static {v1, p0}, Lcom/dragonlab/bbclearningenglish/utils/DialogManager;->joinQQGroup(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v1, "NGLY6Bu_4gGI_7m71SVJmXBNoUQHtL9L"

    invoke-static {v1, p0}, Lcom/dragonlab/bbclearningenglish/utils/DialogManager;->joinQQGroup(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b005f
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "https://raw.githubusercontent.com/uestcfeiv/sites/master/v2/passes/lovecat"

    const-string v1, "pass"

    invoke-static {p0, v0, v1}, Lcom/dragonlab/bbclearningenglish/utils/NetParser;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->edPass:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->btEnter:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->btGetPwd:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/dragonlab/bbclearningenglish/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->ivJoin:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->btEnter:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->btGetPwd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/dragonlab/bbclearningenglish/LockActivity;->ivJoin:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

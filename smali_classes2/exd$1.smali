.class final Lexd$1;
.super Ljava/lang/Object;
.source "CallApmtConfRecordPresenter.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexd;-><init>(Lexa$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexd;


# direct methods
.method constructor <init>(Lexd;)V
    .locals 0
    .param p1, "this$0"    # Lexd;

    .prologue
    .line 64
    iput-object p1, p0, Lexd$1;->a:Lexd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 7
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 67
    if-eqz p1, :cond_0

    iget v4, p1, Lcjo$b;->b:I

    const/16 v5, 0x7da

    if-eq v4, v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v4, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtChangedModel;

    if-eqz v4, :cond_0

    .line 74
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtChangedModel;

    .line 75
    .local v3, "object":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtChangedModel;
    iget-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtChangedModel;->action:Ljava/lang/String;

    .line 76
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexd;->c()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Action is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 82
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "CONF_CHANGED Push,"

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "conversation id  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtChangedModel;->appointId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "action "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 85
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "log":Ljava/lang/String;
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v4, "NEW_NOTSTART"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->c(Z)V

    goto :goto_0

    .line 91
    :cond_3
    const-string/jumbo v4, "NEW_UNDERWAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->b(Z)V

    goto/16 :goto_0

    .line 94
    :cond_4
    const-string/jumbo v4, "NOTSTART_TO_CANCEL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->c(Z)V

    .line 97
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->e(Z)V

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string/jumbo v4, "NOTSTART_TO_UNDERWAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->c(Z)V

    .line 101
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->b(Z)V

    goto/16 :goto_0

    .line 103
    :cond_6
    const-string/jumbo v4, "UNDERWAY_TO_END"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->b(Z)V

    .line 106
    iget-object v4, p0, Lexd$1;->a:Lexd;

    invoke-virtual {v4, v6}, Lexd;->d(Z)V

    goto/16 :goto_0
.end method

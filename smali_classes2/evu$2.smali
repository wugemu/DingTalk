.class final Levu$2;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 321
    iput-object p1, p0, Levu$2;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 10
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 324
    if-eqz p1, :cond_1

    iget v5, p1, Lcjo$b;->b:I

    const/16 v6, 0x7d1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcjo$b;->b:I

    const/16 v6, 0x7d7

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v5, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    if-nez v5, :cond_3

    .line 328
    :cond_1
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Note invalid msg"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    :goto_0
    return-void

    .line 332
    :cond_3
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    .line 333
    .local v3, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;
    new-instance v4, Leyk;

    invoke-direct {v4}, Leyk;-><init>()V

    .line 334
    .local v4, "object":Leyk;
    invoke-virtual {v4, v3}, Leyk;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;)Leyk;

    .line 335
    iget-object v5, v4, Leyk;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    if-eqz v5, :cond_4

    iget-object v5, v4, Leyk;->g:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    iget-object v5, v4, Leyk;->g:Ljava/lang/Integer;

    .line 337
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 338
    :cond_4
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Note conf invalid action/type "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Leyk;->g:Ljava/lang/Integer;

    .line 339
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_5
    iget-object v5, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 344
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Receive CONF_PUSH_MEMBER_CHANGED Push, ERROR, not my conference, id "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_6
    iget-object v2, v4, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 350
    .local v2, "memberInfoObject":Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
    iget-object v0, v4, Leyk;->b:Ljava/lang/String;

    .line 352
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 353
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "CONF_PUSH_MEMBER_CHANGED Push,"

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "confId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Leyk;->d:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cause "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Leyk;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "text "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Leyk;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "member uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "member status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 360
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v5, "remove-member"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    iget-object v5, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 364
    iget-object v5, p0, Levu$2;->a:Levu;

    invoke-static {v5}, Levu;->b(Levu;)V

    .line 365
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    sget v6, Levh;->c:I

    invoke-virtual {v5, v6}, Levi;->a(I)V

    .line 366
    invoke-static {}, Lews;->a()Lews;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v5, v6}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 367
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    .line 1155
    invoke-virtual {v5}, Levi;->r()V

    .line 369
    const/4 v5, 0x0

    const/16 v6, 0x2710

    invoke-static {v5, v6}, Lewp;->c(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

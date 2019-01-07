.class final Lflr$5;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 566
    iput-wide p1, p0, Lflr$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 569
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    iget-wide v2, p0, Lflr$5;->a:J

    invoke-interface {v0, v2, v3}, Lfmp;->a(J)I

    .line 570
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->d()Lfmo;

    move-result-object v0

    iget-wide v2, p0, Lflr$5;->a:J

    invoke-interface {v0, v2, v3}, Lfmo;->a(J)I

    .line 571
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.common_contact_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 572
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.friend_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 573
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lflr$5$1;

    invoke-direct {v1, p0}, Lflr$5$1;-><init>(Lflr$5;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v8, p0, Lflr$5;->a:J

    .line 594
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    .line 573
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 595
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lflr$5$2;

    invoke-direct {v1, p0}, Lflr$5$2;-><init>(Lflr$5;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v7, -0x1

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v8, p0, Lflr$5;->a:J

    .line 617
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v10

    move v5, v7

    .line 595
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 618
    return-void
.end method

.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lgln$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V
    .locals 7
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "transferManager"    # Lgln;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 468
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 468
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 2109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 468
    new-instance v6, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(JJLcma;)V

    .line 494
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "transferManager"    # Lgln;

    .prologue
    .line 443
    if-nez p2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 446
    :cond_0
    if-nez p1, :cond_1

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgln;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p2, p1}, Lgln;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method

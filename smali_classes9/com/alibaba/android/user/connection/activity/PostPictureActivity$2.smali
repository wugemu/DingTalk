.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v1

    .line 242
    .local v1, "pool":Lfdo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 244
    .local v0, "params":[Ljava/lang/String;
    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 245
    invoke-static {}, Lfdx;->a()Lfdx;

    move-result-object v3

    sget-object v4, Lfdx$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lfdx;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, "postObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-virtual {v1, v0}, Lfdo;->release(Ljava/lang/Object;)V

    .line 249
    invoke-static {v2}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;-><init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;Ljava/util/List;)V

    const-class v6, Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

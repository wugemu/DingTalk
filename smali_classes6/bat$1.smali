.class final Lbat$1;
.super Ljava/lang/Object;
.source "DingUnReadPresenterV2.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method constructor <init>(Lbat;)V
    .locals 0
    .param p1, "this$0"    # Lbat;

    .prologue
    .line 59
    iput-object p1, p0, Lbat$1;->a:Lbat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 3
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 71
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbat$1$1;

    invoke-direct {v2, p0, v0}, Lbat$1$1;-><init>(Lbat$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

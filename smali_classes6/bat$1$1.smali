.class final Lbat$1$1;
.super Ljava/lang/Object;
.source "DingUnReadPresenterV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbat$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lbat$1;


# direct methods
.method constructor <init>(Lbat$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$1"    # Lbat$1;

    .prologue
    .line 71
    iput-object p1, p0, Lbat$1$1;->b:Lbat$1;

    iput-object p2, p0, Lbat$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lbat$1$1;->b:Lbat$1;

    iget-object v0, v0, Lbat$1;->a:Lbat;

    invoke-static {v0}, Lbat;->a(Lbat;)Lbaq$g;

    move-result-object v0

    iget-object v1, p0, Lbat$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-interface {v0, v2, v3}, Lbaq$g;->b(J)V

    .line 76
    return-void
.end method

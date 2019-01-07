.class final Lcom/alibaba/android/user/connection/activity/ShieldListActivity$1;
.super Ljava/lang/Object;
.source "ShieldListActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ShieldListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ShieldListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ShieldListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ShieldListActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ShieldListActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ShieldListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 68
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ShieldListActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ShieldListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ShieldListActivity;->a(Lcom/alibaba/android/user/connection/activity/ShieldListActivity;)Lfez;

    move-result-object v0

    invoke-interface {v0, p1}, Lfez;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 73
    return-void
.end method

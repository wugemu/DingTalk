.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$2;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$2;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$2;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfez;

    move-result-object v0

    invoke-interface {v0, p1}, Lfez;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 588
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 593
    return-void
.end method

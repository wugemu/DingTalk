.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$6;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$6;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$6;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->m(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfez;

    move-result-object v0

    invoke-interface {v0, p1}, Lfez;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 404
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 409
    return-void
.end method

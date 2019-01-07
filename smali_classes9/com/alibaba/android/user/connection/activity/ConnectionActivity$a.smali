.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;I)V
    .locals 0
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "index"    # I

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 960
    iput p2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->b:I

    .line 961
    return-void
.end method

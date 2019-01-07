.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$34;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)V

    .line 501
    return-void
.end method

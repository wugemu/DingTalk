.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lflo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/graphics/Bitmap;)V

    .line 1987
    return-void
.end method

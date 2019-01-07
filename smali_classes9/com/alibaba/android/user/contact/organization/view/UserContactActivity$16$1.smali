.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2196
    const-string/jumbo v0, "user_ct"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "generateGroupIcon error,code:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",errMsg:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v5}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2188
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2188
    check-cast p1, Ljava/lang/String;

    .line 3191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16$1;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2188
    return-void
.end method

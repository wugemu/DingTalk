.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Ldca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 2126
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;)V

    .line 2121
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2114
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;)V

    .line 2115
    return-void
.end method

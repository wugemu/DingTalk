.class public final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$2;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;Ljava/util/List;)Ljava/util/List;

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$2;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->g(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 174
    return-void
.end method

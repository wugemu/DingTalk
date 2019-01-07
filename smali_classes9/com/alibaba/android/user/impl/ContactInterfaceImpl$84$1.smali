.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;

    .prologue
    .line 3721
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3725
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->e()Lfmp;

    move-result-object v2

    invoke-interface {v2}, Lfmp;->a()Ljava/util/List;

    move-result-object v0

    .line 3726
    .local v0, "allUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3727
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->c()Lfna;

    move-result-object v2

    invoke-interface {v2, v0}, Lfna;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3730
    .local v1, "friendProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->c()Lfna;

    move-result-object v2

    invoke-interface {v2, v1}, Lfna;->a(Ljava/util/List;)I

    .line 3732
    const-string/jumbo v2, "ContactInterfaceImpl"

    const-string/jumbo v3, "fillFriendUserProfileAuthOrgName finished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3734
    .end local v1    # "friendProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_0
    const-string/jumbo v2, "pref_key_fill_user_auth_org_name_version"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;I)V

    .line 3735
    return-void
.end method

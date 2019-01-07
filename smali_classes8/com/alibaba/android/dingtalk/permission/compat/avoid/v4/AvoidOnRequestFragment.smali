.class public Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;
.super Landroid/support/v4/app/Fragment;
.source "AvoidOnRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    .line 146
    return-void
.end method

.method private a(I[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;>;"
    invoke-static {p2}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;

    .line 38
    .local v0, "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    invoke-static {p2, v3}, Lbzz;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;

    .line 44
    .restart local v0    # "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    iget v3, v0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->a:I

    if-ne p1, v3, :cond_2

    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v0    # "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;

    .line 89
    .local v1, "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v4, :cond_4

    sget-object v2, Lbzg;->a:Ljava/util/Set;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 90
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_2

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->c:Lbza;

    invoke-interface {v2}, Lbza;->a()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    aget-object v5, v2, v3

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestPermissions with unknown permission="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :sswitch_0
    const-string/jumbo v4, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    .line 100
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    iget v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->a:I

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .restart local v0    # "intent":Landroid/content/Intent;
    iget v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->a:I

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .restart local v0    # "intent":Landroid/content/Intent;
    iget v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->a:I

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_5

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->c:Lbza;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    new-array v3, v3, [I

    invoke-interface {v2, v4, v3}, Lbza;->a([Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 128
    :cond_5
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    iget v3, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be1381d -> :sswitch_0
        -0x5d1492dd -> :sswitch_1
        0x69eee241 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a(I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;

    .line 76
    .local v1, "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->c:Lbza;

    invoke-interface {v3}, Lbza;->a()V

    goto :goto_1

    .line 78
    .end local v1    # "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->setRetainInstance(Z)V

    .line 32
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a(I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;

    .line 61
    .local v1, "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;->c:Lbza;

    invoke-interface {v3, p2, p3}, Lbza;->a([Ljava/lang/String;[I)V

    goto :goto_1

    .line 63
    .end local v1    # "request":Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment$a;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/v4/AvoidOnRequestFragment;->a()V

    goto :goto_0
.end method

.class public final Lfhq;
.super Lfxq;
.source "GrantResourcesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfhq$b;,
        Lfhq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lcom/alibaba/doraemon/image/ImageMagician;

.field private g:Landroid/view/LayoutInflater;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 38
    iput v1, p0, Lfhq;->b:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lfhq;->c:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lfhq;->d:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lfhq;->e:I

    .line 44
    iput-boolean v1, p0, Lfhq;->j:Z

    .line 50
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lfhq;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lfhq;->g:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 282
    move-object v1, p0

    .line 283
    .local v1, "url":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lfhq;)Z
    .locals 1
    .param p0, "x0"    # Lfhq;

    .prologue
    .line 37
    iget-boolean v0, p0, Lfhq;->j:Z

    return v0
.end method

.method static synthetic a(Lfhq;Z)Z
    .locals 0
    .param p0, "x0"    # Lfhq;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lfhq;->j:Z

    return p1
.end method

.method static synthetic b(Lfhq;)V
    .locals 4
    .param p0, "x0"    # Lfhq;

    .prologue
    .line 37
    .line 2256
    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    :cond_0
    return-void

    .line 2259
    :cond_1
    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    .line 2260
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2263
    iget v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2264
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;)V
    .locals 9
    .param p1, "resourceGroup"    # Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 55
    iget-object v1, p0, Lfhq;->h:Ljava/util/List;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfhq;->h:Ljava/util/List;

    .line 58
    :cond_0
    iget-object v1, p0, Lfhq;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lfhq;->h:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    invoke-direct {v2, v6, v3}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lfhq;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfhq;->a:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    iput-boolean v6, v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    .line 65
    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    iget-object v1, p0, Lfhq;->h:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    iget-object v3, p0, Lfhq;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_contact_subManager_basic:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 68
    .local v0, "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v0, :cond_2

    .line 71
    iget-object v2, p0, Lfhq;->h:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    invoke-direct {v3, v8, v0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lfhq;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfhq;->a:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iput-boolean v6, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    goto :goto_0

    .line 78
    .end local v0    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_3
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 79
    iget-object v1, p0, Lfhq;->h:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    iget-object v3, p0, Lfhq;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_contact_subManager_micro:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 81
    .restart local v0    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v0, :cond_4

    .line 84
    iget-object v2, p0, Lfhq;->h:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    invoke-direct {v3, v8, v0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lfhq;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lfhq;->a:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iput-boolean v6, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    goto :goto_1

    .line 91
    .end local v0    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v1, :cond_6

    .line 92
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    iget-boolean v1, v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    iput-boolean v1, p0, Lfhq;->j:Z

    .line 96
    :goto_2
    return-void

    .line 94
    :cond_6
    iput-boolean v7, p0, Lfhq;->j:Z

    goto :goto_2
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x2

    .line 102
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lfhq;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    iget v0, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->a:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lfhq;->getItemViewType(I)I

    move-result v8

    .line 118
    .local v8, "type":I
    if-nez v8, :cond_2

    .line 1221
    if-nez p2, :cond_1

    .line 1222
    iget-object v0, p0, Lfhq;->g:Landroid/view/LayoutInflater;

    sget v1, Lezg$j;->layout_grant_resouce_category:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1223
    .end local p2    # "convertView":Landroid/view/View;
    new-instance v1, Lfhq$a;

    invoke-direct {v1, p0}, Lfhq$a;-><init>(Lfhq;)V

    .line 1224
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfhq$a;->a:Landroid/widget/TextView;

    .line 1225
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1229
    :goto_0
    invoke-virtual {p0, p1}, Lfhq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    .line 1231
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1232
    iget-object v0, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 1236
    iget-object v1, v1, Lfhq$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2185
    :cond_0
    :goto_1
    return-object p2

    .line 1227
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfhq$a;

    move-object v1, v0

    goto :goto_0

    .line 120
    :cond_2
    if-ne v8, v5, :cond_4

    .line 2129
    if-nez p2, :cond_3

    .line 2130
    iget-object v0, p0, Lfhq;->g:Landroid/view/LayoutInflater;

    sget v1, Lezg$j;->layout_grant_resource_super_item:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2131
    .end local p2    # "convertView":Landroid/view/View;
    new-instance v1, Lfhq$b;

    invoke-direct {v1, p0}, Lfhq$b;-><init>(Lfhq;)V

    .line 2132
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2133
    sget v0, Lezg$h;->btn_toggle_allgrant:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lfhq$b;->d:Landroid/widget/ToggleButton;

    .line 2134
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfhq$b;->b:Landroid/widget/TextView;

    .line 2135
    sget v0, Lezg$h;->tv_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfhq$b;->c:Landroid/widget/TextView;

    .line 2140
    :goto_2
    invoke-virtual {p0, p1}, Lfhq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    .line 2142
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v2, :cond_0

    .line 2143
    iget-object v0, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 2148
    iget-object v2, v1, Lfhq$b;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2149
    iget-object v2, v1, Lfhq$b;->d:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2150
    iget-object v2, v1, Lfhq$b;->d:Landroid/widget/ToggleButton;

    new-instance v3, Lfhq$1;

    invoke-direct {v3, p0, v0}, Lfhq$1;-><init>(Lfhq;Lcom/alibaba/android/user/model/OrgManagerResourceObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2161
    iget-object v2, v1, Lfhq$b;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    iget-object v1, v1, Lfhq$b;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2137
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfhq$b;

    move-object v1, v0

    goto :goto_2

    .line 2168
    :cond_4
    if-nez p2, :cond_6

    .line 2169
    iget-object v0, p0, Lfhq;->g:Landroid/view/LayoutInflater;

    sget v1, Lezg$j;->layout_grant_resource_item:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2170
    .end local p2    # "convertView":Landroid/view/View;
    new-instance v1, Lfhq$b;

    invoke-direct {v1, p0}, Lfhq$b;-><init>(Lfhq;)V

    .line 2171
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2172
    sget v0, Lezg$h;->iv_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lfhq$b;->a:Landroid/widget/ImageView;

    .line 2173
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfhq$b;->b:Landroid/widget/TextView;

    .line 2174
    sget v0, Lezg$h;->tv_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfhq$b;->c:Landroid/widget/TextView;

    .line 2175
    sget v0, Lezg$h;->tb_grant:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lfhq$b;->d:Landroid/widget/ToggleButton;

    move-object v10, v1

    .line 2180
    :goto_3
    invoke-virtual {p0, p1}, Lfhq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;

    .line 2182
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v1, :cond_0

    .line 2183
    iget-object v0, v0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    move-object v9, v0

    check-cast v9, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 2189
    iget-object v0, v9, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->icon:Ljava/lang/String;

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-static {v0, v1, v2}, Lfhq;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 2190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lfhq;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_5

    .line 2191
    iget-object v0, p0, Lfhq;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v10, Lfhq$b;->a:Landroid/widget/ImageView;

    move-object v3, p3

    check-cast v3, Landroid/widget/AbsListView;

    const/16 v4, 0x9

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 2194
    :cond_5
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2195
    iget-boolean v0, p0, Lfhq;->j:Z

    if-eqz v0, :cond_7

    .line 2196
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2197
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2203
    :goto_4
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lfhq$2;

    invoke-direct {v1, p0, v9}, Lfhq$2;-><init>(Lfhq;Lcom/alibaba/android/user/model/OrgManagerResourceObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2211
    iget-object v0, v10, Lfhq$b;->b:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    iget-object v0, v10, Lfhq$b;->c:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2177
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfhq$b;

    move-object v10, v0

    goto :goto_3

    .line 2199
    .end local p2    # "convertView":Landroid/view/View;
    :cond_7
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2200
    iget-object v0, v10, Lfhq$b;->d:Landroid/widget/ToggleButton;

    iget-boolean v1, v9, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    return v0
.end method

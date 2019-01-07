.class public Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceCooperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;,
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgit;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;

.field public b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    const-class v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->c:Ljava/lang/String;

    .line 39
    iput v6, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->b:I

    .line 1130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    .line 1133
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 46
    :cond_1
    invoke-static {}, Lgam;->a()Lgam;

    invoke-static {}, Lgam;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->e:Ljava/util/List;

    .line 47
    return-void

    .line 1138
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1139
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-ne v2, v6, :cond_3

    .line 1140
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1142
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lgit;)V
    .locals 2
    .param p1, "model"    # Lgit;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    .line 244
    :cond_0
    if-nez p1, :cond_1

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "cooperationFolderCid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgit;

    .line 203
    .local v0, "folderModel":Lgit;
    iget-object v2, v0, Lgit;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    .end local v0    # "folderModel":Lgit;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cooperationFolderCid"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    if-nez v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgit;

    .line 219
    .local v0, "model":Lgit;
    if-eqz v0, :cond_2

    .line 222
    iget-object v3, v0, Lgit;->b:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    iput-object p2, v0, Lgit;->c:Ljava/lang/String;

    .line 224
    iget-object v2, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "spaceIdString":Ljava/lang/String;
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, v0, Lgit;->j:Lgjb;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lgit;->j:Lgjb;

    iget-object v2, v2, Lgjb;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 227
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->b:Ljava/lang/String;

    const/4 v4, 0x6

    iget-object v5, v0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4, v5}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "converView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    if-nez p2, :cond_1

    .line 57
    new-instance v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;B)V

    .line 58
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->space_cooperation_item_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    sget v2, Lfzs$f;->img_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->a:Landroid/widget/ImageView;

    .line 60
    sget v2, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->b:Landroid/widget/TextView;

    .line 61
    sget v2, Lfzs$f;->tv_capacity:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->c:Landroid/widget/TextView;

    .line 62
    sget v2, Lfzs$f;->tv_creator:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->e:Landroid/widget/TextView;

    .line 63
    sget v2, Lfzs$f;->tv_belong:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->d:Landroid/widget/TextView;

    .line 64
    sget v2, Lfzs$f;->if_show_more:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 65
    sget v2, Lfzs$f;->divider_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->g:Landroid/view/View;

    .line 66
    sget v2, Lfzs$f;->bottom_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->h:Landroid/view/View;

    .line 67
    sget v2, Lfzs$f;->img_new_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->i:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgit;

    .line 75
    .local v0, "coFolderModel":Lgit;
    if-nez v0, :cond_2

    .line 120
    :cond_0
    :goto_1
    return-object p2

    .line 70
    .end local v0    # "coFolderModel":Lgit;
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;
    goto :goto_0

    .line 80
    .restart local v0    # "coFolderModel":Lgit;
    :cond_2
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 81
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->h:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_2
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->e:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->e:Ljava/util/List;

    iget-object v3, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->i:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 96
    :goto_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lgit;->e:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2277
    if-eqz v2, :cond_3

    .line 2280
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 3046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 2281
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    :goto_4
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->e:Landroid/widget/TextView;

    .line 3167
    if-eqz v2, :cond_4

    if-nez v0, :cond_8

    .line 102
    :cond_4
    :goto_5
    iget-object v2, v0, Lgit;->j:Lgjb;

    if-eqz v2, :cond_d

    .line 103
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v0, Lgit;->j:Lgjb;

    iget-object v2, v2, Lgjb;->a:Ljava/lang/Long;

    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->d:Landroid/widget/TextView;

    .line 4151
    if-eqz v2, :cond_c

    .line 4155
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 5022
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 4155
    if-eqz v2, :cond_c

    .line 4156
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->m:Landroid/content/Context;

    .line 4157
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lfzs$e;->cspace_org_auth_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    .line 4156
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_6
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 112
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;Lgit;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 84
    :cond_5
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 91
    :cond_6
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->i:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 2283
    :cond_7
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->m:Landroid/content/Context;

    sget v4, Lfzs$h;->cspace_no_file:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3171
    :cond_8
    iget-object v3, v0, Lgit;->i:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3173
    iget-object v3, v0, Lgit;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_9

    .line 3174
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 3178
    :cond_9
    iget-object v3, v0, Lgit;->h:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3179
    invoke-static {}, Lfzo;->a()Lfzo;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->m:Landroid/content/Context;

    iget-object v5, v0, Lgit;->h:Ljava/lang/Long;

    .line 4044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3179
    new-instance v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;Landroid/widget/TextView;Lgit;)V

    .line 4112
    if-eqz v3, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_b

    .line 4113
    :cond_a
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Lfzo$a;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4118
    :cond_b
    iget-object v2, v4, Lfzo;->c:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, p1, v9}, Lfzo;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    const-string/jumbo v2, "EVENTBUTLER"

    .line 4121
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lfzo$2;

    invoke-direct {v5, v4, v6, v7, p1}, Lfzo$2;-><init>(Lfzo;JI)V

    const-class v4, Lcma;

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v2, v5, v4, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 4147
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_5

    .line 4159
    :cond_c
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 106
    :cond_d
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$b;->d:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lgam;->a()Lgam;

    invoke-static {}, Lgam;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->e:Ljava/util/List;

    .line 126
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

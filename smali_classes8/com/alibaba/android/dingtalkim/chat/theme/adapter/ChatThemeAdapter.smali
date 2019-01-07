.class public Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatThemeAdapter.java"


# instance fields
.field public a:Ldfu$a;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->b:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;J)V
    .locals 2
    .param p2, "selectedThemeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->d:J

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a(I)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    if-nez p2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->b:Landroid/view/LayoutInflater;

    sget v3, Lctk$g;->layout_item_chat_background:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Ldfu;

    invoke-direct {v1, p2}, Ldfu;-><init>(Landroid/view/View;)V

    .line 68
    .local v1, "holder":Ldfu;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a:Ldfu$a;

    .line 1043
    iput-object v2, v1, Ldfu;->f:Ldfu$a;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->a(I)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v0

    .line 75
    .local v0, "data":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    if-eqz v1, :cond_1

    .line 76
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/ChatThemeAdapter;->d:J

    .line 1047
    if-eqz v0, :cond_1

    .line 1050
    iput-object v0, v1, Ldfu;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 1052
    iget-object v2, v1, Ldfu;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v2, v1, Ldfu;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, v1, Ldfu;->d:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1054
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    .line 1056
    iget-object v2, v1, Ldfu;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1072
    iget-object v2, v1, Ldfu;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_1
    :goto_2
    return-object p2

    .line 71
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .end local v1    # "holder":Ldfu;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfu;

    .restart local v1    # "holder":Ldfu;
    goto :goto_0

    .line 1058
    .restart local v0    # "data":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    :cond_3
    iget-object v2, v1, Ldfu;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    const/4 v2, 0x0

    .line 1061
    :try_start_0
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeThumb:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1066
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1067
    iget-object v3, v1, Ldfu;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v6, v1, Ldfu;->d:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-interface {v3, v6, v2, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 1062
    :catch_0
    move-exception v3

    .line 1063
    const-string/jumbo v6, "im"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ChatThemeViewHolder.transferToHttpUrl error="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1064
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    .line 1063
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1074
    :cond_4
    iget-object v2, v1, Ldfu;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

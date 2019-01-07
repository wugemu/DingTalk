.class public Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreviewAdapter.java"


# static fields
.field private static final b:I


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->values()[Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->d:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->c:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->d:Ljava/util/List;

    .line 1025
    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;-><init>()V

    .line 1030
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->FromText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 1031
    const-wide/32 v2, 0x39dfa

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->d:J

    .line 1032
    sget v2, Lctk$i;->dt_contact_welcome_to_use_dingtalk:I

    iput v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->b:I

    .line 1033
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->e:J

    .line 1034
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;-><init>()V

    .line 1037
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ToText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 1038
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->d:J

    .line 1039
    sget v2, Lctk$i;->dt_im_tell_me_how_to_user:I

    iput v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->b:I

    .line 1040
    const/4 v2, 0x2

    iput v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->c:I

    .line 1041
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->a(I)Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

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
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->a(I)Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    move-result-object v0

    .line 42
    .local v0, "data":Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ordinal()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "viewHolder":Ldfx;
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->a(I)Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    move-result-object v0

    .line 67
    .local v0, "data":Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    if-nez p2, :cond_2

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->a:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 2011
    const/4 v1, 0x0

    .line 2012
    sget-object v3, Ldfy$1;->a:[I

    .end local v1    # "viewHolder":Ldfx;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 70
    .restart local v1    # "viewHolder":Ldfx;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p3}, Ldfx;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-virtual {v1, v0, v2}, Ldfx;->a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 78
    :cond_1
    return-object p2

    .line 2014
    .end local v1    # "viewHolder":Ldfx;
    :pswitch_0
    new-instance v1, Ldfv;

    invoke-direct {v1}, Ldfv;-><init>()V

    goto :goto_0

    .line 2017
    :pswitch_1
    new-instance v1, Ldfw;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldfw;-><init>(Z)V

    goto :goto_0

    .line 2020
    :pswitch_2
    new-instance v1, Ldfw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldfw;-><init>(Z)V

    goto :goto_0

    .line 73
    .restart local v1    # "viewHolder":Ldfx;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Ldfx;
    check-cast v1, Ldfx;

    .restart local v1    # "viewHolder":Ldfx;
    goto :goto_1

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->b:I

    return v0
.end method

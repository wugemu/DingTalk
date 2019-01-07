.class public abstract Lcwz;
.super Lctv;
.source "RobotMarkdownExViewHolder.java"


# instance fields
.field private S:Z

.field private Y:Ldnd;

.field private Z:Landroid/view/View$OnTouchListener;

.field private final a:Ljava/lang/String;

.field private aa:Landroid/graphics/drawable/Drawable;

.field private ab:Landroid/view/ViewGroup;

.field private ac:Landroid/view/ViewGroup;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/view/View;

.field private ai:Landroid/view/ViewGroup;

.field private aj:Landroid/widget/TextView;

.field private ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

.field private al:Landroid/view/View$OnClickListener;

.field protected b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwz;->a:Ljava/lang/String;

    .line 286
    new-instance v0, Lcwz$2;

    invoke-direct {v0, p0}, Lcwz$2;-><init>(Lcwz;)V

    iput-object v0, p0, Lcwz;->al:Landroid/view/View$OnClickListener;

    .line 57
    iput-boolean p1, p0, Lcwz;->S:Z

    .line 58
    return-void
.end method

.method static synthetic a(Lcwz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcwz;

    .prologue
    .line 35
    iget-object v0, p0, Lcwz;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "btnDes"    # Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 267
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    if-nez p2, :cond_1

    .line 271
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    sget v0, Lctk$f;->tag_url:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 274
    sget v0, Lctk$f;->tag_track:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 275
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v0, Lctk$f;->tag_url:I

    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 280
    sget v0, Lctk$f;->tag_track:I

    iget-object v1, p2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;->extension:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcwz;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;)V
    .locals 6
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 209
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnDesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnDesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lcwz;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcwz;->ab:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcwz;->ad:Ljava/util/List;

    iget-object v2, p0, Lcwz;->ag:Ljava/util/List;

    invoke-direct {p0, v1, v4, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 213
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v2, p0, Lcwz;->af:Ljava/util/List;

    invoke-direct {p0, v1, v4, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 233
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnDesList()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "btnDesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;>;"
    const-string/jumbo v1, "1"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    .line 217
    iget-object v1, p0, Lcwz;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcwz;->ab:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcwz;->ad:Ljava/util/List;

    iget-object v2, p0, Lcwz;->ag:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 220
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v2, p0, Lcwz;->af:Ljava/util/List;

    invoke-direct {p0, v1, v4, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 222
    iget-object v1, p0, Lcwz;->ah:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v1, p0, Lcwz;->ah:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcwz;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcwz;->ab:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcwz;->ad:Ljava/util/List;

    iget-object v2, p0, Lcwz;->ag:Ljava/util/List;

    invoke-direct {p0, v1, v4, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 230
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v2, p0, Lcwz;->af:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Lcwz;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_url:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_track:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    .line 2029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 163
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_url:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_track:I

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 3029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 169
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcwz;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcwz;->Z:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    .local p2, "btnDesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;>;"
    .local p3, "headerLineViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 241
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 243
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_5

    .line 244
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcwz;->a(Landroid/widget/TextView;Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;)V

    .line 250
    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 251
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 252
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 253
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;

    invoke-direct {p0, v1, v2}, Lcwz;->a(Landroid/widget/TextView;Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;)V

    goto :goto_1

    .line 257
    :cond_6
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 258
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 259
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_url:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_track:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    .line 4029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 180
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_url:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tag_track:I

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setTag(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 5029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 185
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcwz;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lcwz;->r:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 62
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 63
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcwz;->aa:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->ll_btns_horizontal:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcwz;->ab:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->ll_btns_vertical:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcwz;->ac:Landroid/view/ViewGroup;

    .line 66
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->ll_single_parent:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcwz;->ai:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->tv_single_desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwz;->aj:Landroid/widget/TextView;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcwz;->ad:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcwz;->ae:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcwz;->af:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcwz;->ag:Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcwz;->ad:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_horizontal_1:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcwz;->ad:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_horizontal_2:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcwz;->ag:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_horizontal_headerline:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v1, Lctk$f;->v_horizontal_splitter:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwz;->ah:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_vertical_1:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_vertical_2:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_vertical_3:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_vertical_4:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcwz;->ae:Ljava/util/List;

    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->tv_vertical_5:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcwz;->af:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_vertical_headerline1:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcwz;->af:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_vertical_headerline2:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcwz;->af:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_vertical_headerline3:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcwz;->af:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_vertical_headerline4:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcwz;->af:Ljava/util/List;

    iget-object v1, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget v2, Lctk$f;->btn_vertical_headerline5:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v0, p0, Lcwz;->Z:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Lcwz$1;

    invoke-direct {v0, p0}, Lcwz$1;-><init>(Lcwz;)V

    iput-object v0, p0, Lcwz;->Z:Landroid/view/View$OnTouchListener;

    .line 1111
    :cond_0
    iget-object v0, p0, Lcwz;->ak:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcwz;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1112
    iget-object v0, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcwz;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    invoke-virtual {p0, p2}, Lcwz;->c(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    .line 5122
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 5123
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-eqz v1, :cond_2

    move-object v10, v0

    .line 5124
    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    .line 5125
    invoke-static {p2}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v8

    .line 5320
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_1

    move-object v5, p1

    .line 5321
    check-cast v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 5322
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5325
    iget-object v0, p0, Lcwz;->Y:Ldnd;

    if-nez v0, :cond_0

    .line 5326
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcwz;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 5327
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 6093
    iget-object v3, v3, Ldne;->e:Ldng;

    .line 5328
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcwz;->Y:Ldnd;

    .line 5330
    :cond_0
    iget-object v1, p0, Lcwz;->Y:Ldnd;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-boolean v6, p0, Lcwz;->S:Z

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    move-object v4, p2

    move-object v5, v11

    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 5126
    :cond_1
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5127
    invoke-direct {p0, v10}, Lcwz;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;)V

    .line 5131
    :goto_0
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->extension()Ljava/util/Map;

    move-result-object v2

    .line 6136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6138
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcwz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 6140
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcwz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 6190
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6191
    iget-object v0, p0, Lcwz;->ai:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6192
    iget-object v0, p0, Lcwz;->aj:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcwz;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 342
    return-void

    .line 5129
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcwz;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;)V

    goto :goto_0

    .line 6142
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6145
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcwz;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 6146
    invoke-direct {p0, v1, v2}, Lcwz;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 6150
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcwz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 6152
    invoke-direct {p0, v1, v2}, Lcwz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 6194
    :cond_6
    iget-object v1, p0, Lcwz;->ai:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6195
    iget-object v1, p0, Lcwz;->aj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6196
    iget-object v0, p0, Lcwz;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6197
    iget-object v0, p0, Lcwz;->ag:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6198
    if-eqz v0, :cond_2

    .line 6199
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcwz;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Lcwz;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcwz;->Y:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcwz;->Y:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcwz;->Y:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcwz;->Y:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract p()V
.end method

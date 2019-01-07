.class final Ldnw$b;
.super Ljava/lang/Object;
.source "LayoutRender.java"

# interfaces
.implements Ldnu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/widget/LinearLayout;

.field final synthetic b:Ldnw;

.field private final c:Landroid/widget/ListView;

.field private final d:Lcom/alibaba/doraemon/image/ImageMagician;

.field private final e:Llch;

.field private final f:J

.field private final g:Ldnu$b;

.field private final h:Ldnu$a;

.field private final i:Ldnu$c;

.field private final j:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field private final k:Z

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/alibaba/wukong/im/Message;

.field private final n:Ldng;


# direct methods
.method private constructor <init>(Ldnw;Landroid/widget/LinearLayout;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;JLcom/alibaba/wukong/im/Message;Ldnu$b;Ldnu$a;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLjava/util/Map;Ldnu$c;Ldng;)V
    .locals 5
    .param p2, "rootLayout"    # Landroid/widget/LinearLayout;
    .param p3, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p4, "listView"    # Landroid/widget/ListView;
    .param p5, "messageId"    # J
    .param p7, "authMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p8, "linkClickListener"    # Ldnu$b;
    .param p9, "imageClickListener"    # Ldnu$a;
    .param p10, "renderStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .param p11, "isLeft"    # Z
    .param p13, "textTouchListener"    # Ldnu$c;
    .param p14, "mdParseCacher"    # Ldng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Lcom/alibaba/doraemon/image/ImageMagician;",
            "Landroid/widget/ListView;",
            "J",
            "Lcom/alibaba/wukong/im/Message;",
            "Ldnu$b;",
            "Ldnu$a;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Ldnu$c;",
            "Ldng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p12, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iput-object p1, p0, Ldnw$b;->b:Ldnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v4, Llch;

    invoke-direct {v4}, Llch;-><init>()V

    iput-object v4, p0, Ldnw$b;->e:Llch;

    .line 165
    iput-object p2, p0, Ldnw$b;->a:Landroid/widget/LinearLayout;

    .line 166
    iput-object p3, p0, Ldnw$b;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 167
    iput-object p4, p0, Ldnw$b;->c:Landroid/widget/ListView;

    .line 168
    iput-wide p5, p0, Ldnw$b;->f:J

    .line 169
    iput-object p7, p0, Ldnw$b;->m:Lcom/alibaba/wukong/im/Message;

    .line 170
    move-object/from16 v0, p12

    iput-object v0, p0, Ldnw$b;->l:Ljava/util/Map;

    .line 171
    iput-object p8, p0, Ldnw$b;->g:Ldnu$b;

    .line 1022
    iget-object v4, p1, Ldnw;->a:Ljava/util/List;

    .line 174
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2022
    iget-object v4, p1, Ldnw;->a:Ljava/util/List;

    .line 175
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldnv;

    .line 176
    .local v3, "nodeRendererFactory":Ldnv;
    invoke-interface {v3, p0}, Ldnv;->a(Ldnu;)Lldy;

    move-result-object v2

    .line 177
    .local v2, "nodeRenderer":Lldy;
    iget-object v4, p0, Ldnw$b;->e:Llch;

    invoke-virtual {v4, v2}, Llch;->a(Lldy;)V

    .line 174
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    .end local v2    # "nodeRenderer":Lldy;
    .end local v3    # "nodeRendererFactory":Ldnv;
    :cond_0
    iput-object p9, p0, Ldnw$b;->h:Ldnu$a;

    .line 180
    move-object/from16 v0, p13

    iput-object v0, p0, Ldnw$b;->i:Ldnu$c;

    .line 181
    if-nez p10, :cond_1

    .line 182
    sget-object p10, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 184
    :cond_1
    iput-object p10, p0, Ldnw$b;->j:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 186
    move/from16 v0, p11

    iput-boolean v0, p0, Ldnw$b;->k:Z

    .line 187
    move-object/from16 v0, p14

    iput-object v0, p0, Ldnw$b;->n:Ldng;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Ldnw;Landroid/widget/LinearLayout;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;JLcom/alibaba/wukong/im/Message;Ldnu$b;Ldnu$a;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLjava/util/Map;Ldnu$c;Ldng;B)V
    .locals 1
    .param p1, "x0"    # Ldnw;
    .param p2, "x1"    # Landroid/widget/LinearLayout;
    .param p3, "x2"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p4, "x3"    # Landroid/widget/ListView;
    .param p5, "x4"    # J
    .param p7, "x5"    # Lcom/alibaba/wukong/im/Message;
    .param p8, "x6"    # Ldnu$b;
    .param p9, "x7"    # Ldnu$a;
    .param p10, "x8"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .param p11, "x9"    # Z
    .param p12, "x10"    # Ljava/util/Map;
    .param p13, "x11"    # Ldnu$c;
    .param p14, "x12"    # Ldng;

    .prologue
    .line 146
    invoke-direct/range {p0 .. p14}, Ldnw$b;-><init>(Ldnw;Landroid/widget/LinearLayout;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;JLcom/alibaba/wukong/im/Message;Ldnu$b;Ldnu$a;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLjava/util/Map;Ldnu$c;Ldng;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ldnw$b;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final a(Lldd;)V
    .locals 1
    .param p1, "node"    # Lldd;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Ldnw$b;->e:Llch;

    invoke-virtual {v0, p1}, Llch;->a(Lldd;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ldnw$b;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public final c()Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldnw$b;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    iget-wide v0, p0, Ldnw$b;->f:J

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Ldnw$b;->k:Z

    return v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Ldnw$b;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ldnw$b;->m:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method public final h()Ldnu$b;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ldnw$b;->g:Ldnu$b;

    return-object v0
.end method

.method public final i()Ldnu$a;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ldnw$b;->h:Ldnu$a;

    return-object v0
.end method

.method public final j()Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ldnw$b;->j:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    return-object v0
.end method

.method public final k()Ldnu$c;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ldnw$b;->i:Ldnu$c;

    return-object v0
.end method

.method public final l()Ldng;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ldnw$b;->n:Ldng;

    return-object v0
.end method

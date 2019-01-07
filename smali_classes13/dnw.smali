.class public final Ldnw;
.super Ljava/lang/Object;
.source "LayoutRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldnw$b;,
        Ldnw$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldnv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;

.field private f:Ldnu$b;

.field private g:Ldnu$a;

.field private h:Ldnu$c;


# direct methods
.method private constructor <init>(Ldnw$a;Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)V
    .locals 2
    .param p1, "builder"    # Ldnw$a;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p4, "listView"    # Landroid/widget/ListView;
    .param p5, "linkClickListener"    # Ldnu$b;
    .param p6, "imageClickListener"    # Ldnu$a;
    .param p7, "textViewOnTouchListener"    # Ldnu$c;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Ldnw;->c:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Ldnw;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    iput-object p4, p0, Ldnw;->d:Landroid/widget/ListView;

    .line 1082
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Ldnw;->b:Z

    .line 41
    iput-object p5, p0, Ldnw;->f:Ldnu$b;

    .line 42
    iput-object p6, p0, Ldnw;->g:Ldnu$a;

    .line 43
    iput-object p7, p0, Ldnw;->h:Ldnu$c;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 2082
    iget-object v1, p1, Ldnw$a;->a:Ljava/util/List;

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldnw;->a:Ljava/util/List;

    .line 46
    iget-object v0, p0, Ldnw;->a:Ljava/util/List;

    .line 3082
    iget-object v1, p1, Ldnw$a;->a:Ljava/util/List;

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Ldnw;->a:Ljava/util/List;

    new-instance v1, Ldnw$1;

    invoke-direct {v1, p0}, Ldnw$1;-><init>(Ldnw;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ldnw$a;Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;B)V
    .locals 0
    .param p1, "x0"    # Ldnw$a;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p4, "x3"    # Landroid/widget/ListView;
    .param p5, "x4"    # Ldnu$b;
    .param p6, "x5"    # Ldnu$a;
    .param p7, "x6"    # Ldnu$c;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Ldnw;-><init>(Ldnw$a;Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lldd;JLcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLdng;)Landroid/widget/LinearLayout;
    .locals 20
    .param p1, "node"    # Lldd;
    .param p2, "messageId"    # J
    .param p4, "authMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p6, "renderStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .param p7, "isLeft"    # Z
    .param p8, "mdParseCacher"    # Ldng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lldd;",
            "J",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;",
            "Z",
            "Ldng;",
            ")",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .prologue
    .line 76
    .local p5, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ldnw;->c:Landroid/content/Context;

    .line 4067
    new-instance v3, Ldnw$b;

    invoke-static {v2}, Ldnt;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ldnw;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v7, v0, Ldnw;->d:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Ldnw;->f:Ldnu$b;

    move-object/from16 v0, p0

    iget-object v12, v0, Ldnw;->g:Ldnu$a;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldnw;->h:Ldnu$c;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p5

    move-object/from16 v17, p8

    invoke-direct/range {v3 .. v18}, Ldnw$b;-><init>(Ldnw;Landroid/widget/LinearLayout;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;JLcom/alibaba/wukong/im/Message;Ldnu$b;Ldnu$a;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;ZLjava/util/Map;Ldnu$c;Ldng;B)V

    .line 4069
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ldnw$b;->a(Lldd;)V

    .line 4197
    iget-object v2, v3, Ldnw$b;->a:Landroid/widget/LinearLayout;

    .line 76
    return-object v2
.end method

.class public final Ldnw$a;
.super Ljava/lang/Object;
.source "LayoutRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldnv;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldnw$a;->b:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldnw$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)Ldnw;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "clickListener"    # Ldnu$b;
    .param p5, "imageClickListener"    # Ldnu$a;
    .param p6, "textViewOnClickListener"    # Ldnu$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    new-instance v0, Ldnw;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Ldnw;-><init>(Ldnw$a;Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;B)V

    return-object v0
.end method

.class final Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
.super Ljava/lang/Object;
.source "ColorPickBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/RectF;

.field b:F

.field c:F

.field d:I

.field e:F

.field f:F

.field g:F

.field h:Z

.field final synthetic i:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;


# direct methods
.method private constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->i:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;)V

    return-void
.end method

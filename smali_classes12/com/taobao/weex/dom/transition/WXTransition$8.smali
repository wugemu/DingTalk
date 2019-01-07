.class final Lcom/taobao/weex/dom/transition/WXTransition$8;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition$8;->map(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

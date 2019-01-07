.class abstract Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
.super Ljava/lang/Object;
.source "ViewDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ViewCSSProperty"
.end annotation


# instance fields
.field private final mAnnotation:Landroid/view/ViewDebug$ExportedProperty;

.field private final mCSSName:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;Ljava/lang/String;Landroid/view/ViewDebug$ExportedProperty;)V
    .locals 0
    .param p2, "cssName"    # Ljava/lang/String;
    .param p3, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 457
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->mCSSName:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->mAnnotation:Landroid/view/ViewDebug$ExportedProperty;

    .line 460
    return-void
.end method


# virtual methods
.method public final getAnnotation()Landroid/view/ViewDebug$ExportedProperty;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->mAnnotation:Landroid/view/ViewDebug$ExportedProperty;

    return-object v0
.end method

.method public final getCSSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->mCSSName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

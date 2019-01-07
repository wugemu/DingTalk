.class final Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "ViewDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;,
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;,
        Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$FieldBackedCSSProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Landroid/view/View;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# static fields
.field private static final ID_NAME:Ljava/lang/String; = "id"

.field private static final NONE_MAPPING:Ljava/lang/String; = "<no mapping>"

.field private static final NONE_VALUE:Ljava/lang/String; = "(none)"


# instance fields
.field private final mMethodInvoker:Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;

.field private volatile mViewProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWordBoundaryPattern:Ljava/util/regex/Pattern;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;-><init>()V

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;)V
    .locals 0
    .param p1, "methodInvoker"    # Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mMethodInvoker:Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;

    .line 117
    return-void
.end method

.method private static canFlagsBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z
    .locals 1
    .param p0, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 204
    goto :goto_0
.end method

.method private static canIntBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z
    .locals 1
    .param p0, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 181
    goto :goto_0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 409
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 412
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private convertViewPropertyNameToCSSName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "getterName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getWordBoundaryPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "words":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 269
    aget-object v3, v2, v0

    const-string/jumbo v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    const-string/jumbo v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 276
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getIdAttribute(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 149
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getIdStringQuietly(Ljava/lang/Object;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getIdStyle(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 4
    .param p1, "element"    # Landroid/view/View;
    .param p2, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getIdAttribute(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 308
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "(none)"

    invoke-interface {p2, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string/jumbo v1, "id"

    invoke-interface {p2, v1, v0, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getStyleFromFloat(Ljava/lang/String;Ljava/lang/Float;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
    .param p3, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->isDefaultValue(Ljava/lang/Float;)Z

    move-result v1

    invoke-interface {p4, p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method private getStyleFromInteger(Ljava/lang/String;Ljava/lang/Integer;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .param p3, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/helper/IntegerFormatter;->getInstance()Lcom/taobao/weex/devtools/inspector/helper/IntegerFormatter;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/taobao/weex/devtools/inspector/helper/IntegerFormatter;->format(Ljava/lang/Integer;Landroid/view/ViewDebug$ExportedProperty;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "intValueStr":Ljava/lang/String;
    invoke-static {p3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canIntBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mapIntToStringUsingAnnotation(ILandroid/view/ViewDebug$ExportedProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-interface {p4, p1, v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {p3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canFlagsBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mapFlagsToStringUsingAnnotation(ILandroid/view/ViewDebug$ExportedProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-interface {p4, p1, v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->isDefaultValue(Ljava/lang/Integer;Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    invoke-interface {p4, p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getStyleFromValue(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 1
    .param p1, "element"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    .prologue
    .line 290
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getIdStyle(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    .line 299
    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 292
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 293
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getStyleFromInteger(Ljava/lang/String;Ljava/lang/Integer;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0

    .line 294
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 295
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getStyleFromFloat(Ljava/lang/String;Ljava/lang/Float;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0

    .line 297
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getStylesFromObject(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0
.end method

.method private getStylesFromObject(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 357
    .local v10, "fields":[Ljava/lang/reflect/Field;
    array-length v13, v10

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v13, :cond_0

    aget-object v9, v10, v12

    .line 358
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 359
    .local v11, "modifiers":I
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 365
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 366
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 374
    .local v4, "propertyValue":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "propertyName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 390
    invoke-interface/range {p4 .. p4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "annotationPrefix":Ljava/lang/String;
    if-nez v7, :cond_4

    .end local v3    # "propertyName":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v3}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->convertViewPropertyNameToCSSName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .end local v7    # "annotationPrefix":Ljava/lang/String;
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_4
    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    .line 397
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .local v5, "subAnnotation":Landroid/view/ViewDebug$ExportedProperty;
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p5

    .line 399
    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getStyleFromValue(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    .line 357
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .end local v5    # "subAnnotation":Landroid/view/ViewDebug$ExportedProperty;
    :cond_3
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    .line 367
    :catch_0
    move-exception v8

    .line 368
    .local v8, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to get property of name: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" of object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v8, v1}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v2, "bottomMargin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v2, "topMargin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v2, "leftMargin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "rightMargin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    .line 378
    :pswitch_0
    const-string/jumbo v3, "margin-bottom"

    .line 379
    goto :goto_4

    .line 381
    :pswitch_1
    const-string/jumbo v3, "margin-top"

    .line 382
    goto :goto_4

    .line 384
    :pswitch_2
    const-string/jumbo v3, "margin-left"

    .line 385
    goto :goto_4

    .line 387
    :pswitch_3
    const-string/jumbo v3, "margin-right"

    .line 388
    goto/16 :goto_4

    .line 391
    .restart local v7    # "annotationPrefix":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        -0x23c1d116 -> :sswitch_3
        -0x18afe09d -> :sswitch_1
        0x72f7b095 -> :sswitch_2
        0x7b0f7fb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getViewProperties()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mViewProperties:Ljava/util/List;

    if-nez v5, :cond_5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mViewProperties:Ljava/util/List;

    if-nez v5, :cond_4

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;>;"
    const-class v5, Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 72
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    .line 73
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    .line 76
    .local v0, "annotation":Landroid/view/ViewDebug$ExportedProperty;
    if-eqz v0, :cond_0

    .line 77
    new-instance v8, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;

    .line 79
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->convertViewPropertyNameToCSSName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v2, v9, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;Ljava/lang/reflect/Method;Ljava/lang/String;Landroid/view/ViewDebug$ExportedProperty;)V

    .line 77
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "annotation":Landroid/view/ViewDebug$ExportedProperty;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const-class v5, Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 85
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    .line 86
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    .line 89
    .restart local v0    # "annotation":Landroid/view/ViewDebug$ExportedProperty;
    if-eqz v0, :cond_2

    .line 90
    new-instance v7, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$FieldBackedCSSProperty;

    .line 92
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->convertViewPropertyNameToCSSName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v1, v8, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$FieldBackedCSSProperty;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;Ljava/lang/reflect/Field;Ljava/lang/String;Landroid/view/ViewDebug$ExportedProperty;)V

    .line 90
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "annotation":Landroid/view/ViewDebug$ExportedProperty;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v4, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$1;

    invoke-direct {v4, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mViewProperties:Ljava/util/List;

    .line 105
    .end local v3    # "props":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;>;"
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_5
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mViewProperties:Ljava/util/List;

    return-object v4

    .line 105
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getWordBoundaryPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mWordBoundaryPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "(?<=\\p{Lower})(?=\\p{Upper})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mWordBoundaryPattern:Ljava/util/regex/Pattern;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mWordBoundaryPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static isDefaultValue(Ljava/lang/Float;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultValue(Ljava/lang/Integer;Landroid/view/ViewDebug$ExportedProperty;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canFlagsBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canIntBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static mapFlagsToStringUsingAnnotation(ILandroid/view/ViewDebug$ExportedProperty;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # I
    .param p1, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canFlagsBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Cannot map using this annotation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 217
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 219
    .local v0, "atLeastOneFlag":Z
    invoke-interface {p1}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v1, v6, v5

    .line 220
    .local v1, "flagToString":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v8

    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v3

    and-int/2addr v3, p0

    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v9

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-ne v8, v3, :cond_3

    .line 221
    if-nez v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 226
    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/4 v0, 0x1

    .line 219
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_4
    move v3, v4

    .line 220
    goto :goto_1

    .line 234
    .end local v1    # "flagToString":Landroid/view/ViewDebug$FlagToString;
    :cond_5
    if-eqz v0, :cond_6

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    :goto_2
    return-object v3

    :cond_6
    const-string/jumbo v3, "<no mapping>"

    goto :goto_2
.end method

.method private static mapIntToStringUsingAnnotation(ILandroid/view/ViewDebug$ExportedProperty;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I
    .param p1, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->canIntBeMappedToString(Landroid/view/ViewDebug$ExportedProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot map using this annotation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 194
    .local v0, "map":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v0}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 195
    invoke-interface {v0}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    .line 200
    .end local v0    # "map":Landroid/view/ViewDebug$IntToString;
    :goto_1
    return-object v1

    .line 193
    .restart local v0    # "map":Landroid/view/ViewDebug$IntToString;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "map":Landroid/view/ViewDebug$IntToString;
    :cond_2
    const-string/jumbo v1, "<no mapping>"

    goto :goto_1
.end method


# virtual methods
.method public final getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Landroid/view/View;

    .end local p1    # "element":Ljava/lang/Object;
    return-object p1
.end method

.method protected final onGetAttributes(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 2
    .param p1, "element"    # Landroid/view/View;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getIdAttribute(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v1, "id"

    invoke-interface {p2, v1, v0}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->onGetAttributes(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    return-void
.end method

.method protected final onGetNodeName(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "android.view."

    const-string/jumbo v2, "android.widget."

    .line 125
    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/common/StringUtil;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/common/StringUtil;->removePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    return-object v1
.end method

.method protected final bridge synthetic onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->onGetNodeName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onGetStyles(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 11
    .param p1, "element"    # Landroid/view/View;
    .param p2, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getViewProperties()Ljava/util/List;

    move-result-object v8

    .line 164
    .local v8, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 165
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;

    .line 169
    .local v9, "property":Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
    :try_start_0
    invoke-virtual {v9}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getCSSName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    invoke-virtual {v9}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getAnnotation()Landroid/view/ViewDebug$ExportedProperty;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getStyleFromValue(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/view/ViewDebug$ExportedProperty;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed to get style property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getCSSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of element= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v6, v0}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v6    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v9    # "property":Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
    :cond_0
    return-void

    .line 173
    .restart local v9    # "property":Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method protected final bridge synthetic onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->onGetStyles(Landroid/view/View;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    return-void
.end method

.method protected final onSetAttributesAsText(Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .param p1, "element"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    invoke-static {p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->parseSetAttributesAsTextArg(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 139
    .local v0, "attributeToValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "methodName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "propertyValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->mMethodInvoker:Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;

    invoke-virtual {v4, p1, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onSetAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->onSetAttributesAsText(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

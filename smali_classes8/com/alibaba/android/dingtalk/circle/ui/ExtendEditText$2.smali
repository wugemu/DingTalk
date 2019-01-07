.class final Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText$2;
.super Ljava/lang/Object;
.source "ExtendEditText.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 330
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 331
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 300
    if-gt p2, p3, :cond_1

    move v3, p2

    .line 301
    .local v3, "s":I
    :goto_0
    if-gt p2, p3, :cond_2

    move v1, p3

    .line 302
    .local v1, "e":I
    :goto_1
    const/4 v0, 0x0

    .line 303
    .local v0, "chineseCount":I
    move v2, v3

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 304
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText$2;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 303
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "chineseCount":I
    .end local v1    # "e":I
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1
    move v3, p3

    .line 300
    goto :goto_0

    .restart local v3    # "s":I
    :cond_2
    move v1, p2

    .line 301
    goto :goto_1

    .line 308
    .restart local v0    # "chineseCount":I
    .restart local v1    # "e":I
    .restart local v2    # "i":I
    :cond_3
    sub-int v4, v1, v3

    add-int/2addr v4, v0

    return v4
.end method

.method public final b(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "convertedEnd"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    if-gt p2, p3, :cond_2

    move v4, p2

    .line 314
    .local v4, "s":I
    :goto_0
    if-gt p2, p3, :cond_3

    move v1, p3

    .line 315
    .local v1, "e":I
    :goto_1
    const/4 v3, 0x0

    .line 316
    .local v3, "length":I
    const/4 v0, 0x0

    .line 317
    .local v0, "chineseCount":I
    move v2, v4

    .local v2, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 318
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/ui/ExtendEditText$2;->a(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 321
    :cond_0
    add-int v5, v2, v0

    if-lt v5, v1, :cond_4

    .line 322
    sub-int v3, v2, v4

    .line 326
    :cond_1
    return v3

    .end local v0    # "chineseCount":I
    .end local v1    # "e":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "s":I
    :cond_2
    move v4, p3

    .line 313
    goto :goto_0

    .restart local v4    # "s":I
    :cond_3
    move v1, p2

    .line 314
    goto :goto_1

    .line 317
    .restart local v0    # "chineseCount":I
    .restart local v1    # "e":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

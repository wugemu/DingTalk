.class public final Llck;
.super Ljava/lang/Object;
.source "Parsing.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    sput v0, Llck;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "column"    # I

    .prologue
    .line 24
    rem-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I

    .prologue
    .line 28
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 28
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, -0x1

    .end local v0    # "i":I
    :pswitch_1
    return v0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 39
    move v0, v1

    .line 1089
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1090
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 39
    :goto_1
    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1089
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1102
    goto :goto_1

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 65
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 66
    .local v0, "c":C
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    if-nez v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    const v3, 0xfffd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    .end local v0    # "c":C
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    .end local p0    # "line":Ljava/lang/CharSequence;
    :cond_3
    return-object p0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 44
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    return v1
.end method

.method public static c(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 48
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 52
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

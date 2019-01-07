.class public final Lhb;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb$b;,
        Lhb$a;,
        Lhb$c;
    }
.end annotation


# static fields
.field private static final b:Lhb$c;


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Lhb$b;

    invoke-direct {v0}, Lhb$b;-><init>()V

    sput-object v0, Lhb;->b:Lhb$c;

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Lhb$a;

    invoke-direct {v0}, Lhb$a;-><init>()V

    sput-object v0, Lhb;->b:Lhb$c;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lhb$c;

    invoke-direct {v0}, Lhb$c;-><init>()V

    sput-object v0, Lhb;->b:Lhb$c;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1    # "record":Ljava/lang/Object;
    iput-object p1, p0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    .line 108
    return-void
.end method

.method public static a()Lhb;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lhb;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lhb;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I

    .prologue
    .line 563
    sget-object v0, Lhb;->b:Lhb$c;

    invoke-virtual {v0, p0, p1}, Lhb$c;->a(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 564
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I

    .prologue
    .line 607
    sget-object v0, Lhb;->b:Lhb$c;

    invoke-virtual {v0, p0, p1}, Lhb$c;->b(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 608
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 810
    if-ne p0, p1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v1

    .line 813
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 814
    goto :goto_0

    .line 816
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 817
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 819
    check-cast v0, Lhb;

    .line 820
    .local v0, "other":Lhb;
    iget-object v3, p0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_4

    .line 821
    iget-object v3, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v3, :cond_0

    move v1, v2

    .line 822
    goto :goto_0

    .line 824
    :cond_4
    iget-object v3, p0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v4, v0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 825
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhb;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

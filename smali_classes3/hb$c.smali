.class Lhb$c;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 44
    return-void
.end method

.method public b(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 47
    return-void
.end method

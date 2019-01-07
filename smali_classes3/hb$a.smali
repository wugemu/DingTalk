.class Lhb$a;
.super Lhb$c;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lhb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 68
    return-void
.end method

.method public final b(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 73
    return-void
.end method

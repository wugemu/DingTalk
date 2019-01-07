.class public final Lfsm$a;
.super Ljava/lang/Object;
.source "NameCardEditEntryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public b:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textColor"    # I
    .param p2, "bgColor"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lfsm$a;->a:I

    .line 66
    iput p2, p0, Lfsm$a;->b:I

    .line 67
    return-void
.end method

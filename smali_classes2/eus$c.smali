.class final Leus$c;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Leus;


# direct methods
.method private constructor <init>(Leus;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Leus$c;->b:Leus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leus;B)V
    .locals 0
    .param p1, "x0"    # Leus;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Leus$c;-><init>(Leus;)V

    return-void
.end method

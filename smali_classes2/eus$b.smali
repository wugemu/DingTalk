.class final Leus$b;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Leus;


# direct methods
.method private constructor <init>(Leus;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Leus$b;->b:Leus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leus;B)V
    .locals 0
    .param p1, "x0"    # Leus;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Leus$b;-><init>(Leus;)V

    return-void
.end method

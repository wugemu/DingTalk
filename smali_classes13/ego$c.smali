.class final Lego$c;
.super Ljava/lang/Object;
.source "FocusDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lego;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lego;


# direct methods
.method private constructor <init>(Lego;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lego$c;->b:Lego;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lego;B)V
    .locals 0
    .param p1, "x0"    # Lego;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lego$c;-><init>(Lego;)V

    return-void
.end method

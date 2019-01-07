.class final Lego$b;
.super Ljava/lang/Object;
.source "FocusDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lego;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lego;


# direct methods
.method private constructor <init>(Lego;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lego$b;->c:Lego;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lego;B)V
    .locals 0
    .param p1, "x0"    # Lego;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lego$b;-><init>(Lego;)V

    return-void
.end method

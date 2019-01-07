.class final Lcom/tencent/open/TDialog$a;
.super Ljta$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/tencent/open/TDialog$a;->a:Lcom/tencent/open/TDialog;

    invoke-direct {p0}, Ljta$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;B)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$a;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method

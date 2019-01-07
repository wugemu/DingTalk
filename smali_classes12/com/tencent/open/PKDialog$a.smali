.class final Lcom/tencent/open/PKDialog$a;
.super Ljta$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/PKDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/PKDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/PKDialog;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tencent/open/PKDialog$a;->a:Lcom/tencent/open/PKDialog;

    invoke-direct {p0}, Ljta$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/PKDialog;B)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/tencent/open/PKDialog$a;-><init>(Lcom/tencent/open/PKDialog;)V

    return-void
.end method

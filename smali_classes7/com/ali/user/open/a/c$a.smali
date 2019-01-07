.class Lcom/ali/user/open/a/c$a;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/open/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/ali/user/open/a/c$a;->a:I

    .line 58
    iput p2, p0, Lcom/ali/user/open/a/c$a;->b:I

    .line 59
    iput p3, p0, Lcom/ali/user/open/a/c$a;->c:I

    .line 60
    return-void
.end method

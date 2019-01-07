.class public final Ljlw$a;
.super Ljava/lang/Object;
.source "SingleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljlw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Ljlw;


# direct methods
.method public constructor <init>(Ljlw;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Ljlw$a;->c:Ljlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

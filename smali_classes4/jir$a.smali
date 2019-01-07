.class public final Ljir$a;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljir$a;->a:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljir$a;->b:I

    return-void
.end method

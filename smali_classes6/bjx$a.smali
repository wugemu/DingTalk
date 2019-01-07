.class public final Lbjx$a;
.super Ljava/lang/Object;
.source "DingParentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lbjx$a;->a:I

    .line 42
    iput-object p2, p0, Lbjx$a;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

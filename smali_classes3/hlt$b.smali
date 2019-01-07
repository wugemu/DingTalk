.class public final Lhlt$b;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lhlt;


# direct methods
.method public constructor <init>(Lhlt;)V
    .locals 0
    .param p1, "this$0"    # Lhlt;

    .prologue
    .line 1536
    iput-object p1, p0, Lhlt$b;->c:Lhlt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

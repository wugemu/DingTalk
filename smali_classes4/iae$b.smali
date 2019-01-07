.class public final Liae$b;
.super Ljava/lang/Object;
.source "IMTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Z

.field final synthetic f:Liae;


# direct methods
.method public constructor <init>(Liae;)V
    .locals 0
    .param p1, "this$0"    # Liae;

    .prologue
    .line 198
    .local p0, "this":Liae$b;, "Liae<TV;TT;>.b;"
    iput-object p1, p0, Liae$b;->f:Liae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

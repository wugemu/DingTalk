.class public final Liaa$b;
.super Ljava/lang/Object;
.source "ThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaa;
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

.field final synthetic f:Liaa;


# direct methods
.method public constructor <init>(Liaa;)V
    .locals 0
    .param p1, "this$0"    # Liaa;

    .prologue
    .line 204
    .local p0, "this":Liaa$b;, "Liaa<TV;TT;>.b;"
    iput-object p1, p0, Liaa$b;->f:Liaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

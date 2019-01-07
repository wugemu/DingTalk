.class public final Lebl$a;
.super Ljava/lang/Object;
.source "UploadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field final synthetic c:Lebl;


# direct methods
.method public constructor <init>(Lebl;JI)V
    .locals 0
    .param p1, "this$0"    # Lebl;
    .param p2, "messageId"    # J
    .param p4, "progress"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lebl$a;->c:Lebl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-wide p2, p0, Lebl$a;->a:J

    .line 89
    iput p4, p0, Lebl$a;->b:I

    .line 90
    return-void
.end method

.class final Liaq$3;
.super Lcom/alibaba/bee/DBStatusListener;
.source "IMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liaq;


# direct methods
.method constructor <init>(Liaq;)V
    .locals 0
    .param p1, "this$0"    # Liaq;

    .prologue
    .line 121
    iput-object p1, p0, Liaq$3;->a:Liaq;

    invoke-direct {p0}, Lcom/alibaba/bee/DBStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelete(Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    const-string/jumbo v0, "DBErr"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Lhzs;->a(Ljava/lang/String;D)V

    .line 125
    return-void
.end method

.class final Linv$a;
.super Ljava/lang/Object;
.source "H5AvailablePageData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Linv;


# direct methods
.method private constructor <init>(Linv;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Linv$a;->a:Linv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Linv;B)V
    .locals 0
    .param p1, "x0"    # Linv;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Linv$a;-><init>(Linv;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Linv$a;->a:Linv;

    .line 1130
    const-string/jumbo v1, "H5AvailablePageData"

    const-string/jumbo v2, "stopLoading"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-wide v2, v0, Linv;->d:J

    iput-wide v2, v0, Linv;->e:J

    .line 143
    return-void
.end method

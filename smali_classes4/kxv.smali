.class public final Lkxv;
.super Ljava/lang/Object;


# instance fields
.field a:Lkvj;

.field b:Lkxu;

.field c:Lkxz;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkvj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkvj;-><init>(I)V

    iput-object v0, p0, Lkxv;->a:Lkvj;

    iput-object v2, p0, Lkxv;->b:Lkxu;

    iput-object v2, p0, Lkxv;->c:Lkxz;

    iput-object v2, p0, Lkxv;->d:Ljava/util/Vector;

    return-void
.end method

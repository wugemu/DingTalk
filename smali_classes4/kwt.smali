.class public interface abstract Lkwt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkvn;

.field public static final b:Lkvn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkwt;->a:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkwt;->b:Lkvn;

    return-void
.end method

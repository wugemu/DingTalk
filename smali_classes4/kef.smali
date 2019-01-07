.class public final Lkef;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljvg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljvg;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljvg;-><init>(ZI)V

    sput-object v0, Lkef;->a:Ljvg;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lkef;->a:Ljvg;

    new-instance v1, Lkeg;

    invoke-direct {v1, p0}, Lkeg;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljvg;->a(Ljvg$b;)V

    return-void
.end method

.method public static a(Ljvg$b;)V
    .locals 1

    sget-object v0, Lkef;->a:Ljvg;

    invoke-virtual {v0, p0}, Ljvg;->a(Ljvg$b;)V

    return-void
.end method

.method public static a(Ljvg$b;J)V
    .locals 1

    sget-object v0, Lkef;->a:Ljvg;

    invoke-virtual {v0, p0, p1, p2}, Ljvg;->a(Ljvg$b;J)V

    return-void
.end method

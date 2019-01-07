.class public final Lkeo$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lkeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkeo;

    invoke-direct {v0}, Lkeo;-><init>()V

    sput-object v0, Lkeo$a;->a:Lkeo;

    return-void
.end method

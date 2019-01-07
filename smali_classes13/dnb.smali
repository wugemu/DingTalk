.class public final Ldnb;
.super Ljava/lang/Object;
.source "BackgroundMdParser.java"


# instance fields
.field a:Ldxc;

.field b:Ldne;

.field volatile c:Z

.field d:Lldm;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldxc;Ldne;)V
    .locals 1
    .param p1, "threadExecutor"    # Ldxc;
    .param p2, "mdParseCacher"    # Ldne;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldnb;->e:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Ldnb;->a:Ldxc;

    .line 24
    iput-object p2, p0, Ldnb;->b:Ldne;

    .line 25
    invoke-static {p2}, Ldna;->a(Ldne;)Lldm;

    move-result-object v0

    iput-object v0, p0, Ldnb;->d:Lldm;

    .line 26
    return-void
.end method

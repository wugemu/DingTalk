.class public Legd;
.super Ljava/lang/Object;
.source "DataCenterServiceImpl.java"

# interfaces
.implements Legb;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Legb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Legd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Legd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Legb;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Legd;->b:Legb;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Legd;

    invoke-direct {v0}, Legd;-><init>()V

    sput-object v0, Legd;->b:Legb;

    .line 40
    :cond_0
    sget-object v0, Legd;->b:Legb;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 12
    .param p1, "oid"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "subAppId"    # Ljava/lang/String;
    .param p6, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lefy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p8, "listener":Lcma;, "Lcma<Lefy;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v10

    sget-object v11, Legd;->a:Ljava/lang/String;

    new-instance v0, Legd$1;

    move-object v1, p0

    move-object/from16 v2, p8

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Legd$1;-><init>(Legd;Lcma;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v10, v11, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

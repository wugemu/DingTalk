.class public Lcom/alibaba/doraemon/impl/request/VolleyResponse;
.super Ljava/lang/Object;
.source "VolleyResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;,
        Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final error:Lcom/alibaba/doraemon/impl/request/VolleyError;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public intermediate:Z

.field public length:J

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field statusCode:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->intermediate:Z

    .line 104
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->headers:Ljava/util/Map;

    .line 107
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->statusCode:I

    .line 117
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->result:Ljava/lang/Object;

    .line 118
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    .line 119
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->headers:Ljava/util/Map;

    .line 120
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->statusCode:I

    .line 121
    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->length:J

    .line 122
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<TT;>;"
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->intermediate:Z

    .line 104
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->headers:Ljava/util/Map;

    .line 107
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->statusCode:I

    .line 125
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->result:Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    .line 127
    return-void
.end method

.method public static error(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .locals 1
    .param p0, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/doraemon/impl/request/VolleyError;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    return-object v0
.end method

.method public static success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .locals 8
    .param p0, "statusCode"    # I
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "result":Ljava/lang/Object;, "TT;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;-><init>(ILjava/lang/Object;JLjava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

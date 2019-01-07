.class public final Ldoo;
.super Ljava/lang/Object;
.source "ChatMenuHandlerFactory.java"


# static fields
.field private static a:Ldoo;


# instance fields
.field private final b:Ldpp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ldpp;

    invoke-direct {v0}, Ldpp;-><init>()V

    iput-object v0, p0, Ldoo;->b:Ldpp;

    .line 69
    return-void
.end method

.method public static a()Ldoo;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Ldoo;->a:Ldoo;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ldoo;

    invoke-direct {v0}, Ldoo;-><init>()V

    sput-object v0, Ldoo;->a:Ldoo;

    .line 76
    :cond_0
    sget-object v0, Ldoo;->a:Ldoo;

    return-object v0
.end method


# virtual methods
.method public final a(Lcng;)Ldon;
    .locals 2
    .param p1, "menu"    # Lcng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Ldoo;->b:Ldpp;

    .line 162
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget v1, p1, Lcng;->a:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :pswitch_0
    iget-object v0, p0, Ldoo;->b:Ldpp;

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Ldot;

    invoke-direct {v0}, Ldot;-><init>()V

    .line 88
    .local v0, "handler":Ldon;
    goto :goto_0

    .line 90
    .end local v0    # "handler":Ldon;
    :pswitch_2
    new-instance v0, Ldow;

    invoke-direct {v0}, Ldow;-><init>()V

    .line 91
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 93
    .end local v0    # "handler":Ldon;
    :pswitch_3
    new-instance v0, Ldpg;

    invoke-direct {v0}, Ldpg;-><init>()V

    .line 94
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 96
    .end local v0    # "handler":Ldon;
    :pswitch_4
    new-instance v0, Ldph;

    invoke-direct {v0}, Ldph;-><init>()V

    .line 97
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 99
    .end local v0    # "handler":Ldon;
    :pswitch_5
    new-instance v0, Ldov;

    invoke-direct {v0}, Ldov;-><init>()V

    .line 100
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 102
    .end local v0    # "handler":Ldon;
    :pswitch_6
    new-instance v0, Ldou;

    invoke-direct {v0}, Ldou;-><init>()V

    .line 103
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 105
    .end local v0    # "handler":Ldon;
    :pswitch_7
    new-instance v0, Ldpj;

    invoke-direct {v0}, Ldpj;-><init>()V

    .line 106
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 109
    .end local v0    # "handler":Ldon;
    :pswitch_8
    new-instance v0, Ldpa;

    invoke-direct {v0}, Ldpa;-><init>()V

    .line 110
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 112
    .end local v0    # "handler":Ldon;
    :pswitch_9
    new-instance v0, Ldpn;

    invoke-direct {v0}, Ldpn;-><init>()V

    .line 113
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 115
    .end local v0    # "handler":Ldon;
    :pswitch_a
    new-instance v0, Ldpf;

    invoke-direct {v0}, Ldpf;-><init>()V

    .line 116
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 118
    .end local v0    # "handler":Ldon;
    :pswitch_b
    new-instance v0, Ldoz;

    invoke-direct {v0}, Ldoz;-><init>()V

    .line 119
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 121
    .end local v0    # "handler":Ldon;
    :pswitch_c
    new-instance v0, Ldoy;

    invoke-direct {v0}, Ldoy;-><init>()V

    .line 122
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 124
    .end local v0    # "handler":Ldon;
    :pswitch_d
    new-instance v0, Ldpd;

    invoke-direct {v0}, Ldpd;-><init>()V

    .line 125
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 127
    .end local v0    # "handler":Ldon;
    :pswitch_e
    new-instance v0, Ldpo;

    invoke-direct {v0}, Ldpo;-><init>()V

    .line 128
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 130
    .end local v0    # "handler":Ldon;
    :pswitch_f
    new-instance v0, Ldpq;

    invoke-direct {v0}, Ldpq;-><init>()V

    .line 131
    .restart local v0    # "handler":Ldon;
    goto :goto_0

    .line 133
    .end local v0    # "handler":Ldon;
    :pswitch_10
    new-instance v0, Ldpb;

    invoke-direct {v0}, Ldpb;-><init>()V

    .line 134
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 136
    .end local v0    # "handler":Ldon;
    :pswitch_11
    new-instance v0, Ldpm;

    invoke-direct {v0}, Ldpm;-><init>()V

    .line 137
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 139
    .end local v0    # "handler":Ldon;
    :pswitch_12
    new-instance v0, Ldpl;

    invoke-direct {v0}, Ldpl;-><init>()V

    .line 140
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 142
    .end local v0    # "handler":Ldon;
    :pswitch_13
    new-instance v0, Ldpi;

    invoke-direct {v0}, Ldpi;-><init>()V

    .line 143
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 145
    .end local v0    # "handler":Ldon;
    :pswitch_14
    new-instance v0, Ldpe;

    invoke-direct {v0}, Ldpe;-><init>()V

    .line 146
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 148
    .end local v0    # "handler":Ldon;
    :pswitch_15
    new-instance v0, Ldor;

    invoke-direct {v0}, Ldor;-><init>()V

    .line 149
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 151
    .end local v0    # "handler":Ldon;
    :pswitch_16
    new-instance v0, Ldox;

    invoke-direct {v0}, Ldox;-><init>()V

    .line 152
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 154
    .end local v0    # "handler":Ldon;
    :pswitch_17
    new-instance v0, Ldpk;

    invoke-direct {v0}, Ldpk;-><init>()V

    .line 155
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 157
    .end local v0    # "handler":Ldon;
    :pswitch_18
    new-instance v0, Ldpc;

    invoke-direct {v0}, Ldpc;-><init>()V

    .line 158
    .restart local v0    # "handler":Ldon;
    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_2
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_4
        :pswitch_14
        :pswitch_1
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method

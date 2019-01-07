.class public final Lglz;
.super Ljava/lang/Object;
.source "SpaceMenuHandlerFactory.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lgly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lglz;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lgly;
    .locals 3
    .param p0, "menuId"    # I

    .prologue
    .line 40
    sget-object v2, Lglz;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgly;

    .line 42
    .local v0, "spaceMenuHandler":Lgly;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 196
    .end local v0    # "spaceMenuHandler":Lgly;
    .local v1, "spaceMenuHandler":Lgly;
    :goto_0
    return-object v1

    .line 46
    .end local v1    # "spaceMenuHandler":Lgly;
    .restart local v0    # "spaceMenuHandler":Lgly;
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 192
    :goto_1
    if-eqz v0, :cond_1

    .line 193
    sget-object v2, Lglz;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 196
    .end local v0    # "spaceMenuHandler":Lgly;
    .restart local v1    # "spaceMenuHandler":Lgly;
    goto :goto_0

    .line 49
    .end local v1    # "spaceMenuHandler":Lgly;
    .restart local v0    # "spaceMenuHandler":Lgly;
    :sswitch_0
    new-instance v0, Lgno;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgno;-><init>()V

    .line 50
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 52
    :sswitch_1
    new-instance v0, Lgmp;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmp;-><init>()V

    .line 53
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 55
    :sswitch_2
    new-instance v0, Lgmm;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmm;-><init>()V

    .line 56
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 59
    :sswitch_3
    new-instance v0, Lgmy;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmy;-><init>()V

    .line 60
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 63
    :sswitch_4
    new-instance v0, Lgmv;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmv;-><init>()V

    .line 64
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 67
    :sswitch_5
    new-instance v0, Lgmj;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmj;-><init>()V

    .line 68
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 70
    :sswitch_6
    new-instance v0, Lgmr;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmr;-><init>()V

    .line 71
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 73
    :sswitch_7
    new-instance v0, Lgmt;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmt;-><init>()V

    .line 74
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 76
    :sswitch_8
    new-instance v0, Lgnk;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnk;-><init>()V

    .line 77
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 79
    :sswitch_9
    new-instance v0, Lgnl;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnl;-><init>()V

    .line 80
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 82
    :sswitch_a
    new-instance v0, Lgmn;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmn;-><init>()V

    .line 83
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 85
    :sswitch_b
    new-instance v0, Lgmo;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmo;-><init>()V

    .line 86
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 88
    :sswitch_c
    new-instance v0, Lgnr;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnr;-><init>()V

    .line 89
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 92
    :sswitch_d
    new-instance v0, Lgns;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgns;-><init>()V

    .line 93
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 95
    :sswitch_e
    new-instance v0, Lgnj;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnj;-><init>()V

    .line 96
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto :goto_1

    .line 98
    :sswitch_f
    new-instance v0, Lgnm;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnm;-><init>()V

    .line 99
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 101
    :sswitch_10
    new-instance v0, Lgnp;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnp;-><init>()V

    .line 102
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 104
    :sswitch_11
    new-instance v0, Lgmq;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmq;-><init>()V

    .line 105
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 107
    :sswitch_12
    new-instance v0, Lgnf;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnf;-><init>()V

    .line 108
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 110
    :sswitch_13
    new-instance v0, Lgne;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgne;-><init>()V

    .line 111
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 113
    :sswitch_14
    new-instance v0, Lgmx;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmx;-><init>()V

    .line 114
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 116
    :sswitch_15
    new-instance v0, Lgmw;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmw;-><init>()V

    .line 117
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 119
    :sswitch_16
    new-instance v0, Lgmz;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmz;-><init>()V

    .line 120
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 123
    :sswitch_17
    new-instance v0, Lgme;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgme;-><init>()V

    .line 124
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 127
    :sswitch_18
    new-instance v0, Lgnt;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnt;-><init>()V

    .line 128
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 131
    :sswitch_19
    new-instance v0, Lgnb;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnb;-><init>()V

    .line 132
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 134
    :sswitch_1a
    new-instance v0, Lgnc;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnc;-><init>()V

    .line 135
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 137
    :sswitch_1b
    new-instance v0, Lgng;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgng;-><init>()V

    .line 138
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 140
    :sswitch_1c
    new-instance v0, Lgni;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgni;-><init>()V

    .line 141
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 143
    :sswitch_1d
    new-instance v0, Lgms;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgms;-><init>()V

    .line 144
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 147
    :sswitch_1e
    new-instance v0, Lgna;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgna;-><init>()V

    .line 148
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 152
    :sswitch_1f
    new-instance v0, Lgnn;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnn;-><init>()V

    .line 153
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 155
    :sswitch_20
    new-instance v0, Lgmg;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmg;-><init>()V

    .line 156
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 158
    :sswitch_21
    new-instance v0, Lgmf;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmf;-><init>()V

    .line 159
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 161
    :sswitch_22
    new-instance v0, Lgmi;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmi;-><init>()V

    .line 162
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 164
    :sswitch_23
    new-instance v0, Lgmh;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmh;-><init>()V

    .line 165
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 168
    :sswitch_24
    new-instance v0, Lgnh;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnh;-><init>()V

    .line 169
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 171
    :sswitch_25
    new-instance v0, Lgmu;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmu;-><init>()V

    .line 172
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 178
    :sswitch_26
    new-instance v0, Lgmk;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgmk;-><init>()V

    .line 179
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 181
    :sswitch_27
    new-instance v0, Lgnq;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnq;-><init>()V

    .line 182
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 184
    :sswitch_28
    new-instance v0, Lgml;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgml;-><init>()V

    .line 185
    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 187
    :sswitch_29
    new-instance v0, Lgnd;

    .end local v0    # "spaceMenuHandler":Lgly;
    invoke-direct {v0}, Lgnd;-><init>()V

    .restart local v0    # "spaceMenuHandler":Lgly;
    goto/16 :goto_1

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_18
        0x6 -> :sswitch_1e
        0xa -> :sswitch_a
        0x14 -> :sswitch_b
        0x1e -> :sswitch_13
        0x23 -> :sswitch_1f
        0x25 -> :sswitch_29
        0x28 -> :sswitch_f
        0x32 -> :sswitch_12
        0x3c -> :sswitch_0
        0x46 -> :sswitch_d
        0x50 -> :sswitch_5
        0x5a -> :sswitch_1c
        0x64 -> :sswitch_1d
        0x6e -> :sswitch_18
        0x78 -> :sswitch_1e
        0x82 -> :sswitch_19
        0x8c -> :sswitch_19
        0x96 -> :sswitch_1a
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_d
        0xb4 -> :sswitch_6
        0xbe -> :sswitch_10
        0xc8 -> :sswitch_3
        0xd2 -> :sswitch_3
        0xdc -> :sswitch_1
        0xe6 -> :sswitch_4
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_4
        0x104 -> :sswitch_1b
        0x10e -> :sswitch_e
        0x118 -> :sswitch_8
        0x122 -> :sswitch_9
        0x12c -> :sswitch_c
        0x136 -> :sswitch_11
        0x140 -> :sswitch_7
        0x14a -> :sswitch_2
        0x154 -> :sswitch_17
        0x15e -> :sswitch_17
        0x3f2 -> :sswitch_14
        0x3fc -> :sswitch_15
        0x406 -> :sswitch_16
        0x7da -> :sswitch_1f
        0x7e4 -> :sswitch_20
        0x7ee -> :sswitch_22
        0x7f8 -> :sswitch_21
        0x802 -> :sswitch_23
        0xbc2 -> :sswitch_1f
        0xbcc -> :sswitch_24
        0xbd6 -> :sswitch_24
        0xfaa -> :sswitch_25
        0x1392 -> :sswitch_26
        0x139c -> :sswitch_26
        0x13a6 -> :sswitch_26
        0x13b0 -> :sswitch_26
        0x13ba -> :sswitch_26
        0x13c4 -> :sswitch_27
        0x13ce -> :sswitch_28
    .end sparse-switch
.end method

.method public static a(Lgqm;)Lgly;
    .locals 1
    .param p0, "menuObject"    # Lgqm;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgqm;->a:I

    invoke-static {v0}, Lglz;->a(I)Lgly;

    move-result-object v0

    goto :goto_0
.end method
